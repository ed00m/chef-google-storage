# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/storage/property/array'
module Google
  module Storage
    module Data
      # A class to manage data for DefaultObjectAcl for bucket.
      class BucketDefaultObjectAcl
        include Comparable

        attr_reader :bucket
        attr_reader :domain
        attr_reader :email
        attr_reader :entity
        attr_reader :entity_id
        attr_reader :generation
        attr_reader :id
        attr_reader :object
        attr_reader :project_team
        attr_reader :role

        def to_json(_arg = nil)
          {
            'bucket' => bucket,
            'domain' => domain,
            'email' => email,
            'entity' => entity,
            'entityId' => entity_id,
            'generation' => generation,
            'id' => id,
            'object' => object,
            'projectTeam' => project_team,
            'role' => role
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            bucket: bucket.to_s,
            domain: domain.to_s,
            email: email.to_s,
            entity: entity.to_s,
            entity_id: entity_id.to_s,
            generation: generation.to_s,
            id: id.to_s,
            object: object.to_s,
            project_team: project_team.to_s,
            role: role.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? BucketDefaultObjectAcl
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? BucketDefaultObjectAcl
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        def compare_fields(other)
          [
            { self: bucket, other: other.bucket },
            { self: domain, other: other.domain },
            { self: email, other: other.email },
            { self: entity, other: other.entity },
            { self: entity_id, other: other.entity_id },
            { self: generation, other: other.generation },
            { self: id, other: other.id },
            { self: object, other: other.object },
            { self: project_team, other: other.project_team },
            { self: role, other: other.role }
          ]
        end
      end

      # Manages a BucketDefaultObjectAcl nested object
      # Data is coming from the GCP API
      class BucketDefaultObjectAclApi < BucketDefaultObjectAcl
        def initialize(args)
          @bucket = Google::Storage::Property::BucketNameRef.api_parse(args['bucket'])
          @domain = Google::Storage::Property::String.api_parse(args['domain'])
          @email = Google::Storage::Property::String.api_parse(args['email'])
          @entity = Google::Storage::Property::String.api_parse(args['entity'])
          @entity_id = Google::Storage::Property::String.api_parse(args['entityId'])
          @generation = Google::Storage::Property::Integer.api_parse(args['generation'])
          @id = Google::Storage::Property::String.api_parse(args['id'])
          @object = Google::Storage::Property::String.api_parse(args['object'])
          @project_team =
            Google::Storage::Property::BucketProjectTeam.api_parse(args['projectTeam'])
          @role = Google::Storage::Property::Enum.api_parse(args['role'])
        end
      end

      # Manages a BucketDefaultObjectAcl nested object
      # Data is coming from the Chef catalog
      class BucketDefaultObjectAclCatalog < BucketDefaultObjectAcl
        def initialize(args)
          @bucket = Google::Storage::Property::BucketNameRef.catalog_parse(args[:bucket])
          @domain = Google::Storage::Property::String.catalog_parse(args[:domain])
          @email = Google::Storage::Property::String.catalog_parse(args[:email])
          @entity = Google::Storage::Property::String.catalog_parse(args[:entity])
          @entity_id = Google::Storage::Property::String.catalog_parse(args[:entity_id])
          @generation = Google::Storage::Property::Integer.catalog_parse(args[:generation])
          @id = Google::Storage::Property::String.catalog_parse(args[:id])
          @object = Google::Storage::Property::String.catalog_parse(args[:object])
          @project_team =
            Google::Storage::Property::BucketProjectTeam.catalog_parse(args[:project_team])
          @role = Google::Storage::Property::Enum.catalog_parse(args[:role])
        end
      end
    end

    module Property
      # A class to manage input to DefaultObjectAcl for bucket.
      class BucketDefaultObjectAcl
        def self.coerce
          ->(x) { ::Google::Storage::Property::BucketDefaultObjectAcl.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::BucketDefaultObjectAcl
          Data::BucketDefaultObjectAclCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::BucketDefaultObjectAcl
          Data::BucketDefaultObjectAclApi.new(value)
        end
      end

      # A Chef property that holds an integer
      class BucketDefaultObjectAclArray < Google::Storage::Property::Array
        def self.coerce
          ->(x) { ::Google::Storage::Property::BucketDefaultObjectAclArray.catalog_parse(x) }
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return BucketDefaultObjectAcl.catalog_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| BucketDefaultObjectAcl.catalog_parse(v) }
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return BucketDefaultObjectAcl.api_parse(value) \
            unless value.is_a?(::Array)
          value.map { |v| BucketDefaultObjectAcl.api_parse(v) }
        end
      end
    end
  end
end
